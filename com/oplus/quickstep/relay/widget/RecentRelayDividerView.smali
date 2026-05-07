.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$Companion;

.field private static final OFFSET_PX:F = 20.0f


# instance fields
.field private final mDividerPaint$delegate:Ly2/e;

.field private final mDividerWidth:I

.field private final mPadding:I

.field private paintAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->paintAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070572

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070571

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mPadding:I

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$mDividerPaint$2;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView$mDividerPaint$2;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;)V

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mDividerPaint$delegate:Ly2/e;

    return-void
.end method

.method private final getMDividerPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mDividerPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final changeVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->setPaintAlpha(F)V

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    const/4 p1, 0x4

    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getPaintAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->paintAlpha:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mPadding:I

    int-to-float v2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mDividerWidth:I

    int-to-float v1, v1

    add-float v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000  # 20.0f

    sub-float v5, v0, v1

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->getMDividerPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/high16 v3, 0x41a00000  # 20.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    iget p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mDividerWidth:I

    iget v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->mPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setPaintAlpha(F)V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->paintAlpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->getMDividerPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->paintAlpha:F

    return-void
.end method
