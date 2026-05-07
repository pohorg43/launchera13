.class Lcom/android/launcher/widget/HotseatCenterLayoutHelper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printDBHotseatData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/HotseatCenterLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "HotseatCenterLayoutHelper"

    const-string/jumbo v1, "printDBHotseatData - loadHotseatData"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    iget-object v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/OplusModelWriter;->loadHotseatData(Landroid/content/Context;)V

    return-void
.end method
