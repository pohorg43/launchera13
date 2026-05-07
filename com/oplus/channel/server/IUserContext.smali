.class public interface abstract Lcom/oplus/channel/server/IUserContext;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
.end method

.method public abstract acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
.end method

.method public abstract bindService(Landroid/content/Intent;)V
.end method

.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getUserHandle()Landroid/os/UserHandle;
.end method

.method public abstract getUserId()I
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startService(Landroid/content/Intent;)V
.end method

.method public abstract unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public abstract unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
