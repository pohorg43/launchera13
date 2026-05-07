.class public final Lcom/android/launcher3/card/uscard/USCardView$content$1;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final clipRect:Landroid/graphics/RectF;

.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->this$0:Lcom/android/launcher3/card/uscard/USCardView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->clipRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    if-nez p1, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_37

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content, dispatchKeyEvent event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should be ignore"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardView-USCardView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->this$0:Lcom/android/launcher3/card/uscard/USCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/uscard/USCardView;->access$getMPath$p(Lcom/android/launcher3/card/uscard/USCardView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->this$0:Lcom/android/launcher3/card/uscard/USCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/uscard/USCardView;->access$getMPath$p(Lcom/android/launcher3/card/uscard/USCardView;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->clipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->this$0:Lcom/android/launcher3/card/uscard/USCardView;

    invoke-static {v2}, Lcom/android/launcher3/card/uscard/USCardView;->access$getMRadiusArr$p(Lcom/android/launcher3/card/uscard/USCardView;)[F

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView$content$1;->this$0:Lcom/android/launcher3/card/uscard/USCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/uscard/USCardView;->access$getMPath$p(Lcom/android/launcher3/card/uscard/USCardView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
