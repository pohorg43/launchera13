.class public Le/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c;
.implements Le/d;


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/content/Context;

.field public e:I

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Lcom/coui/appcompat/progressbar/COUILoadingView;

.field public i:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

.field public j:Landroid/view/ViewGroup$LayoutParams;

.field public k:Landroid/view/ViewGroup$LayoutParams;

.field public l:Landroid/view/View;

.field public m:I

.field public n:Landroid/widget/AbsListView$LayoutParams;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Le/a;->o:Ljava/lang/String;

    iput-object v0, p0, Le/a;->p:Ljava/lang/String;

    iput-object p1, p0, Le/a;->d:Landroid/content/Context;

    iput-object p2, p0, Le/a;->i:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    iget p1, p2, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b:I

    iput p1, p0, Le/a;->e:I

    invoke-virtual {p2, p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->setmOnChangeViewTip(Le/d;)V

    invoke-virtual {p2, p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->setmOnChangeViewHeight(Le/c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Le/a;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    iget-object v1, p0, Le/a;->n:Landroid/widget/AbsListView$LayoutParams;

    iget p0, p0, Le/a;->e:I

    add-int/2addr p1, p0

    iput p1, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Le/a;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iput-object p1, p0, Le/a;->p:Ljava/lang/String;

    iget-object v0, p0, Le/a;->h:Lcom/coui/appcompat/progressbar/COUILoadingView;

    if-eqz v0, :cond_33

    const-string v0, "Loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p0, p0, Le/a;->h:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_33

    :cond_20
    iget-object p0, p0, Le/a;->h:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x4852f000  # 216000.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_33
    :goto_33
    return-void
.end method

.method public c(I)V
    .registers 5

    iget-object v0, p0, Le/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    iget-object v1, p0, Le/a;->l:Landroid/view/View;

    if-nez v1, :cond_d

    if-nez p1, :cond_d

    const/4 p1, 0x1

    :cond_d
    iget-object v1, p0, Le/a;->j:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    iget-object v0, p0, Le/a;->l:Landroid/view/View;

    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    iget-object v1, p0, Le/a;->k:Landroid/view/ViewGroup$LayoutParams;

    if-nez p1, :cond_20

    const/4 p1, 0x0

    goto :goto_22

    :cond_20
    iget p1, p0, Le/a;->e:I

    :goto_22
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Le/a;->m:I

    if-eq v2, p1, :cond_31

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/a;->k:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Le/a;->m:I

    :cond_31
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Le/a;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    iput-object p1, p0, Le/a;->o:Ljava/lang/String;

    iget-object v0, p0, Le/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v0, p0, Le/a;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Le/a;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_c5

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_c6

    goto :goto_51

    :sswitch_26
    const-string v1, "Refreshing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_51

    :cond_2f
    move v0, v3

    goto :goto_51

    :sswitch_31
    const-string v1, "Refresh Finish"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_51

    :cond_3a
    move v0, v4

    goto :goto_51

    :sswitch_3c
    const-string v1, "Release Refresh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_51

    :cond_45
    move v0, v5

    goto :goto_51

    :sswitch_47
    const-string v1, "Pull Refresh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_51

    :cond_50
    move v0, v2

    :goto_51
    const/4 p1, 0x0

    const/16 v1, 0x8

    if-eqz v0, :cond_b2

    if-eq v0, v5, :cond_9c

    if-eq v0, v4, :cond_92

    if-eq v0, v3, :cond_6b

    iget-object p1, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c5

    :cond_6b
    iget-object v0, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x4852f000  # 216000.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_c5

    :cond_92
    iget-object p0, p0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_c5

    :cond_9c
    iget-object p1, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x43340000  # 180.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_c5

    :cond_b2
    iget-object v0, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_c5
    :goto_c5
    return-void

    :sswitch_data_c6
    .sparse-switch
        -0x500b4c00 -> :sswitch_47
        -0x2c24507e -> :sswitch_3c
        0x1ac33db8 -> :sswitch_31
        0x63a32f47 -> :sswitch_26
    .end sparse-switch
.end method
