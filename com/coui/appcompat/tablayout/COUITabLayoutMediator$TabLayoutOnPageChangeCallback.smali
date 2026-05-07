.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeCallback"
.end annotation


# instance fields
.field public a:I


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->a:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    const/4 p0, 0x0

    throw p0
.end method

.method public onPageSelected(I)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method
