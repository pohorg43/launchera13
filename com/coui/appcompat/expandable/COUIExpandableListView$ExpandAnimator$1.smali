.class Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;->a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

.field public final synthetic f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;)V
    .registers 7

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    iput-boolean p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->a:Z

    iput p3, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->b:I

    iput-boolean p4, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->c:Z

    iput-object p5, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->e:Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    iget-object v0, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/COUIExpandableListView;

    const-string v1, "COUIExpandableListView"

    if-nez v0, :cond_1c

    const-string p1, "onAnimationUpdate: expandable list is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_1c
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    iget-boolean v4, v4, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;->b:Z

    if-nez v4, :cond_6d

    iget-boolean v6, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->a:Z

    if-nez v6, :cond_6d

    iget v6, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->b:I

    if-gt v2, v6, :cond_48

    if-ge v5, v6, :cond_6d

    :cond_48
    const-string p1, "onAnimationUpdate: all is screen out, first:"

    const-string v0, ",groupPos:"

    invoke-static {p1, v2, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",last:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_6d
    if-nez v4, :cond_8b

    iget-boolean v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->a:Z

    if-nez v2, :cond_8b

    iget-boolean v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->c:Z

    if-eqz v2, :cond_8b

    iget v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->b:I

    if-ne v5, v2, :cond_8b

    if-nez v3, :cond_8b

    const-string p1, "onAnimationUpdate: expand is screen over, last:"

    invoke-static {p1, v5, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_8b
    if-nez v4, :cond_cc

    iget-boolean v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->a:Z

    if-eqz v2, :cond_cc

    iget-boolean v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->c:Z

    if-eqz v2, :cond_cc

    iget-object v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getBottom()I

    move-result v3

    if-le v2, v3, :cond_cc

    const-string p1, "onAnimationUpdate3: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_cc
    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;->b:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->e:Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    iput p1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->f:I

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator$1;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
