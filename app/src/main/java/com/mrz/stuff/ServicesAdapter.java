package com.mrz.stuff;

import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.lody.virtual.client.core.VirtualCore;
import com.lody.virtual.client.ipc.VActivityManager;
import com.mrz.R;

import java.io.File;
import java.util.ArrayList;

public class ServicesAdapter extends RecyclerView.Adapter<ServicesAdapter.viewHolder> {

    Context context;
    ArrayList<itemModel> arrayList;

    public ServicesAdapter(Context context, ArrayList<itemModel> arrayList) {
        this.context = context;
        this.arrayList = arrayList;
    }

    @Override
    public  ServicesAdapter.viewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(context).inflate(R.layout.service_list, viewGroup, false);
        return new viewHolder(view);
    }

    @Override
    public  void onBindViewHolder(ServicesAdapter.viewHolder holder, final int position) {
        holder.service.setText(arrayList.get(position).getService());
        holder.delete.setOnClickListener(v -> {
            File mrz = new File(context.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + arrayList.get(position).getService());
            if (mrz.isDirectory())
            {
                String[] children = mrz.list();
                for (int i = 0; i < children.length; i++)
                {
                    new File(mrz, children[i]).delete();
                }
            }
            uninstallApp(arrayList.get(position).getPKG());
            new File(context.getCacheDir().getAbsolutePath() + "/GAMES/" + arrayList.get(position).getService()).delete();
            arrayList.remove(position);
        });
        holder.start.setOnClickListener(v -> launchApp(arrayList.get(position).getPKG()));
        byte[] arrayOfByte = Base64.decode(arrayList.get(position).getImage(), 0);
        Bitmap bitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
        holder.img.setImageBitmap(bitmap);
    }
    public void uninstallApp(String paramString) { VirtualCore.get().uninstallPackage(paramString); }
    public void launchApp(String paramString) { VActivityManager.get().startActivity(VirtualCore.get().getLaunchIntent(paramString, 0), 0); }

    @Override
    public int getItemCount() {
        return arrayList.size();
    }

    public class viewHolder extends RecyclerView.ViewHolder {
        TextView service;
        Button start,delete;
        ImageView img;

        public viewHolder(View itemView) {
            super(itemView);
            service = (TextView) itemView.findViewById(R.id.service);
            start = (Button) itemView.findViewById(R.id.start);
            delete = (Button) itemView.findViewById(R.id.delete);
            img = (ImageView) itemView.findViewById(R.id.profile);
        }
    }
}
