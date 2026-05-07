.class public Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;
.super Lcom/android/launcher3/widget/WidgetCell;
.source ""


# instance fields
.field private mPreview:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(FLandroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->lambda$generateFromRemoteViews$0(FLandroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static generateFromRemoteViews(Lcom/android/launcher3/BaseActivity;Landroid/widget/RemoteViews;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v2, p2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    mul-int/2addr v1, v2

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget p2, p2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    mul-int/2addr v0, p2

    :try_start_e
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x40000000  # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_30} :catch_48

    aput p1, p4, v0

    if-le p1, p3, :cond_3b

    int-to-float p4, p3

    int-to-float p1, p1

    div-float/2addr p4, p1

    int-to-float p1, p2

    mul-float/2addr p1, p4

    float-to-int p2, p1

    goto :goto_3e

    :cond_3b
    const/high16 p4, 0x3f800000  # 1.0f

    move p3, p1

    :goto_3e
    new-instance p1, Lcom/android/launcher3/dragndrop/v;

    invoke-direct {p1, p4, p0}, Lcom/android/launcher3/dragndrop/v;-><init>(FLandroid/view/View;)V

    invoke-static {p3, p2, p1}, Lcom/android/launcher3/icons/BitmapRenderer;->createSoftwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_48
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$generateFromRemoteViews$0(FLandroid/view/View;Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p2, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public setPreview(Landroid/widget/RemoteViews;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    return-void
.end method
