.class Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationContext"
.end annotation


# instance fields
.field public final mCurrentCropRect:Landroid/graphics/Rect;

.field public final mEndCropRect:Landroid/graphics/Rect;

.field private mIsLandscape:Z

.field public final mLeash:Landroid/view/SurfaceControl;

.field private mSplitPosition:I
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation
.end field

.field public final mStartCropRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;Landroid/view/SurfaceControl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mIsLandscape:Z

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update(IZ)V

    return-void
.end method

.method private getLandscapeMargins(IZ)Landroid/graphics/Insets;
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_6

    :cond_5
    move p2, p1

    :goto_6
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    if-nez p0, :cond_d

    move p0, v0

    move v0, p1

    goto :goto_e

    :cond_d
    move p0, p1

    :goto_e
    invoke-static {v0, p1, p0, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private getPortraitMargins(IZ)Landroid/graphics/Insets;
    .registers 4

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    const/4 v0, 0x0

    if-nez p0, :cond_8

    move p0, v0

    move v0, p1

    goto :goto_d

    :cond_8
    if-eqz p2, :cond_c

    move p0, v0

    goto :goto_d

    :cond_c
    move p0, p1

    :goto_d
    invoke-static {p1, v0, p1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private isTaskbarExpanded()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->access$400(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->access$400(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->access$500(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;)I

    move-result p0

    if-lt v0, p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method private update()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->access$300(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->isTaskbarExpanded()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->access$400(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_22
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd  # 0.05f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mIsLandscape:Z

    if-eqz v2, :cond_4e

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->getLandscapeMargins(IZ)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_52

    :cond_4e
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->getPortraitMargins(IZ)Landroid/graphics/Insets;

    move-result-object v0

    :goto_52
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

.method private update(IZ)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mIsLandscape:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update()V

    return-void
.end method
