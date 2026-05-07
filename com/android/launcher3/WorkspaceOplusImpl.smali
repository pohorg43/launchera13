.class public final Lcom/android/launcher3/WorkspaceOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/core/IExtCreator;
.implements Lcom/android/launcher3/IWorkspaceExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/WorkspaceOplusImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/IWorkspaceExt;",
        ">;",
        "Lcom/android/launcher3/IWorkspaceExt;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/WorkspaceOplusImpl$Companion;

.field private static final NUM_THREE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WorkspaceOplusImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mHost:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/WorkspaceOplusImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/WorkspaceOplusImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/WorkspaceOplusImpl;->Companion:Lcom/android/launcher3/WorkspaceOplusImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/IWorkspaceExt;
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/launcher3/Workspace;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceOplusImpl;->mHost:Lcom/android/launcher3/Workspace;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WorkspaceOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/IWorkspaceExt;

    move-result-object p0

    return-object p0
.end method

.method public markDragViewUnoccupied(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    const-string v0, "dragObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move-object p1, v0

    goto :goto_c

    :cond_a
    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_c
    if-nez p1, :cond_f

    return-void

    :cond_f
    instance-of v1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_2b

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-nez p2, :cond_19

    :goto_17
    move-object p2, v0

    goto :goto_24

    :cond_19
    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object p2

    if-nez p2, :cond_20

    goto :goto_17

    :cond_20
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_24
    instance-of v1, p2, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_3e

    check-cast p2, Lcom/android/launcher3/CellLayout;

    goto :goto_3f

    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_33

    move-object p2, v0

    goto :goto_37

    :cond_33
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_37
    instance-of v1, p2, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_3e

    check-cast p2, Lcom/android/launcher3/CellLayout;

    goto :goto_3f

    :cond_3e
    move-object p2, v0

    :goto_3f
    if-nez p2, :cond_51

    iget-object p0, p0, Lcom/android/launcher3/WorkspaceOplusImpl;->mHost:Lcom/android/launcher3/Workspace;

    if-nez p0, :cond_46

    goto :goto_48

    :cond_46
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    :goto_48
    const-string p0, "WorkspaceOplusImpl"

    const-string/jumbo p2, "markDragViewUnoccupied(), mark mDragTargetLayout."

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :cond_51
    if-nez p2, :cond_55

    const/4 p0, -0x1

    goto :goto_59

    :cond_55
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p0

    :goto_59
    sput p0, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    if-nez p2, :cond_5e

    goto :goto_61

    :cond_5e
    invoke-virtual {p2, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :goto_61
    return-void
.end method

.method public onInterceptShouldFlingForVelocity(FZLcom/android/launcher3/DeviceProfile;)Z
    .registers 7

    const-string p0, "deviceProfile"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_46

    iget p0, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterceptShouldFlingForVelocity:screenWidth:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOverlayTranslation "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " superResult "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "WorkspaceOplusImpl"

    invoke-static {v2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_44

    if-eqz p2, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    :goto_45
    return v0

    :cond_46
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_54

    if-eqz p2, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    return v0
.end method
