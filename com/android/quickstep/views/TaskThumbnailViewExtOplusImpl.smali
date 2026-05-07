.class public Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/views/ITaskThumbnailViewExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/views/ITaskThumbnailViewExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/views/ITaskThumbnailViewExt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/views/ITaskThumbnailViewExt;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailViewExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/views/ITaskThumbnailViewExt;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapShader(Landroid/graphics/Bitmap;)Landroid/graphics/BitmapShader;
    .registers 3

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object p0
.end method
