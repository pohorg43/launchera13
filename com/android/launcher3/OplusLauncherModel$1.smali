.class Lcom/android/launcher3/OplusLauncherModel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusLauncherModel;->onMultiAppPackageAdded(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel$1;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherModel$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/common/multiapp/MultiAppManager;->onMultiPackageAdded(Ljava/lang/String;)V

    return-void
.end method
