.class public final Lcom/android/quickstep/views/TaskThumbnailViewExtFoldScreenImpl;
.super Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapShader(Landroid/graphics/Bitmap;)Landroid/graphics/BitmapShader;
    .registers 3

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object p0
.end method
