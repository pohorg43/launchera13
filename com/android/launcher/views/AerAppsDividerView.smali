.class public Lcom/android/launcher/views/AerAppsDividerView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# instance fields
.field private mTabsHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/views/AerAppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/AerAppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/views/AerAppsDividerView;->mTabsHidden:Z

    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 p0, 0x0

    goto :goto_18

    :cond_a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    :goto_18
    return p0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/allapps/FloatingHeaderRow;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher/views/AerAppsDividerView;

    return-object p0
.end method

.method public hasVisibleContent()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setContentVisibility(ZZLcom/android/launcher3/anim/PropertySetter;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .registers 6

    iget-boolean p1, p0, Lcom/android/launcher/views/AerAppsDividerView;->mTabsHidden:Z

    if-nez p1, :cond_f

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    if-eqz p2, :cond_b

    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-interface {p3, p0, p1, p2, p5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_f
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    return-void
.end method

.method public setVerticalScroll(IZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/views/AerAppsDividerView;->mTabsHidden:Z

    if-nez v0, :cond_10

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    if-eqz p2, :cond_c

    const/4 p1, 0x4

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .registers 4

    iput-boolean p3, p0, Lcom/android/launcher/views/AerAppsDividerView;->mTabsHidden:Z

    if-eqz p3, :cond_7

    const/16 p1, 0x8

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public shouldDraw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/views/AerAppsDividerView;->mTabsHidden:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
