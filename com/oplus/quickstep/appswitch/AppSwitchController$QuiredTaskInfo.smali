.class Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/appswitch/AppSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuiredTaskInfo"
.end annotation


# instance fields
.field public mLastQuiredBasePkgName:Ljava/lang/String;

.field public mLastQuiredTaskid:I

.field public mLastQuiredTopPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredBasePkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTopPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTopPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredBasePkgName:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->reset()V

    return-void

    :cond_6
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTopPkgName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredBasePkgName:Ljava/lang/String;

    return-void
.end method
