.class public Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "HotseatCenterLayoutStrategy"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mHotseat:Lcom/android/launcher3/OplusHotseat;

.field private mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

.field private mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

.field private mOplusHotseatExpandCenterLayoutAnimHelper:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    new-instance v0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mOplusHotseatExpandCenterLayoutAnimHelper:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    :cond_20
    iput-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    return-void
.end method


# virtual methods
.method public cancelHotseatExpandAnimate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mOplusHotseatExpandCenterLayoutAnimHelper:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->cancelUpdateAnimatorSet()V

    :cond_7
    return-void
.end method

.method public checkSize()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->canCheckErrorState()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->dealErrorState(ZZ)V

    goto :goto_27

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->canCheckErrorState()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->dealErrorState(ZZ)V

    :cond_27
    :goto_27
    return-void
.end method

.method public dealErrorState()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    const-string v1, "dealErrorState isPortrait: "

    const-string v2, ", isVerticalBarLayout(): "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HotseatCenterLayoutStrategy"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const-string v1, "dealErrorState"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    return-void

    :cond_44
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_5a

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->dealErrorState(ZZ)V

    goto :goto_5a

    :cond_53
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_5a

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->dealErrorState(ZZ)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public finishAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->finishAnimation()V

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->finishAnimation()V

    :cond_15
    :goto_15
    return-void
.end method

.method public initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public isDragging()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isDragging()Z

    move-result p0

    return p0

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->isDragging()Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isHotseatExpandAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mOplusHotseatExpandCenterLayoutAnimHelper:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdateAnimating()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isHotseatUpdatingExpandWithOutAnim()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mOplusHotseatExpandCenterLayoutAnimHelper:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isMoving()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isMoving()Z

    move-result p0

    return p0

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->isMoving()Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isPortrait()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->hasVerticalHotseat()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDragEnd()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->onDragEnd(Z)V

    goto :goto_16

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->onDragEnd(Z)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)Z

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)Z

    :cond_15
    :goto_15
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public resetLayout()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetLayout()V

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->resetLayout()V

    :cond_15
    :goto_15
    return-void
.end method

.method public startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mOplusHotseatExpandCenterLayoutAnimHelper:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;

    if-eqz p0, :cond_b

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_b
    return-void
.end method

.method public updateGridSize()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatPortraitCenterLayoutHelper:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateGridSize()V

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->mHotseatLandscapeCenterLayoutHelper:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateGridSize()V

    :cond_15
    :goto_15
    return-void
.end method
