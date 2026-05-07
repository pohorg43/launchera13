.class public Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->a:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->b:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->d:F

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->e:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->e:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->a:I

    int-to-float v1, v1

    cmpg-float v2, v0, v1

    const-string v3, "UxNestedRecyclerView"

    const/4 v4, 0x1

    if-gez v2, :cond_2a

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2a

    const-string p0, "Smaller than touch slop, intercept"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2a
    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->b:I

    if-ne v1, v4, :cond_36

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->c:F

    mul-float/2addr v1, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_45

    goto :goto_46

    :cond_36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_46

    :cond_3d
    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->c:F

    mul-float/2addr v1, v0

    cmpl-float v1, v1, p1

    if-lez v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    const-string v1, " x:"

    const-string v2, ", y: "

    const-string v5, ", ratio: "

    invoke-static {v1, v0, v2, p1, v5}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->c:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    goto :goto_3c

    :cond_b
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3c

    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3c

    :cond_22
    const-string v0, "UxNestedRecyclerView"

    const-string v2, "Action down"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxNestedRecyclerView;->e:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_3c
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
