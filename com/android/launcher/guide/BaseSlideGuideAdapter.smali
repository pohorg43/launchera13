.class public abstract Lcom/android/launcher/guide/BaseSlideGuideAdapter;
.super Lcom/oplus/widget/OplusPagerAdapter;
.source ""


# instance fields
.field public mButtonListener:Landroid/view/View$OnClickListener;

.field public mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/widget/OplusPagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    instance-of p0, p3, Landroid/view/View;

    if-eqz p0, :cond_9

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onRelease()V
    .registers 1

    return-void
.end method

.method public onResume(I)V
    .registers 2

    return-void
.end method

.method public setButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateBtton(Landroid/widget/Button;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/widget/OplusPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_16

    const p2, 0x7f12022e

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1f

    :cond_16
    const p2, 0x7f120358

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1f
    iget-object p0, p0, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->mButtonListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_26

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_26
    return-void
.end method
