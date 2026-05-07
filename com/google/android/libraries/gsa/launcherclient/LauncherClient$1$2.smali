.class Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1$2;->this$1:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1$2;->this$1:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->initCardFeature(Landroid/content/Context;)V

    return-void
.end method
