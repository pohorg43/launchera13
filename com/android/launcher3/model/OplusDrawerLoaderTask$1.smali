.class Lcom/android/launcher3/model/OplusDrawerLoaderTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/model/OplusDrawerLoaderTask;->onAllAppsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/model/OplusDrawerLoaderTask;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/OplusDrawerLoaderTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/model/OplusDrawerLoaderTask$1;->this$0:Lcom/android/launcher3/model/OplusDrawerLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v1, "loadAllAppsFirstInstallTime start"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/model/OplusDrawerLoaderTask$1;->this$0:Lcom/android/launcher3/model/OplusDrawerLoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/OplusDrawerLoaderTask$1;->this$0:Lcom/android/launcher3/model/OplusDrawerLoaderTask;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object p0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/common/util/DrawAppSortManagerUtil;->loadAllAppsFirstInstallTime(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v0, "loadAllAppsFirstInstallTime end"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
