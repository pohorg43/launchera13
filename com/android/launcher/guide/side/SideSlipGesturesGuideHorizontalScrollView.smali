.class public final Lcom/android/launcher/guide/side/SideSlipGesturesGuideHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source ""


# instance fields
.field private parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getParentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHorizontalScrollView;->parentView:Landroid/view/View;

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHorizontalScrollView;->parentView:Landroid/view/View;

    if-nez v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.guide.side.SideSlipGesturesGuideBottomActionPage"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHorizontalScrollView;->parentView:Landroid/view/View;

    :cond_25
    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHorizontalScrollView;->parentView:Landroid/view/View;

    if-nez p0, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final setParentView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHorizontalScrollView;->parentView:Landroid/view/View;

    return-void
.end method
