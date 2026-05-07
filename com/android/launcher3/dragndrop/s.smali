.class public final synthetic Lcom/android/launcher3/dragndrop/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Paint;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/s;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/dragndrop/s;->b:F

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/s;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/s;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/dragndrop/s;->b:F

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/s;->c:Landroid/graphics/Paint;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->c(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method
