.class Lcom/oplus/fancyicon/content/res/loader/ResourceManager$1;
.super Landroid/util/LruCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/content/res/loader/ResourceManager;-><init>(Lcom/oplus/fancyicon/content/res/ResourceLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/content/res/loader/ResourceManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$1;->this$0:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$1;->sizeOf(Ljava/lang/String;Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;)I

    move-result p0

    return p0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;)I
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    iget-object p0, p2, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_6
    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    :goto_e
    return p0
.end method
