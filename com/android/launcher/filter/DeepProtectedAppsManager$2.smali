.class Lcom/android/launcher/filter/DeepProtectedAppsManager$2;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/DeepProtectedAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$2;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$2;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$200(Lcom/android/launcher/filter/DeepProtectedAppsManager;)Lcom/android/common/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "try_to_set_access_code_times"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$102(Lcom/android/launcher/filter/DeepProtectedAppsManager;I)I

    return-void
.end method
