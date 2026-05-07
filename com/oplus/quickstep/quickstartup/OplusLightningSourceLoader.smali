.class public final Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

.field private static final LIGHTNING_SOURCE_NAME:Ljava/lang/String; = "lightning_"

.field private static final SOURCE_FILE:Ljava/lang/String; = "drawable"

.field private static final TAG:Ljava/lang/String; = "OplusLightningSourceLoader"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final defaultBitmap$delegate:Ly2/e;

.field private final lightningSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->INSTANCE:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$defaultBitmap$2;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$defaultBitmap$2;-><init>(Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;)V

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->defaultBitmap$delegate:Ly2/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->appContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->lightningSources:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$drawableToBitmap(Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAppContext$p(Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method private final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const-string v1, "drawableToBitmap: w = "

    const-string v2, ", h = "

    invoke-static {v1, p0, v2, v0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusLightningSourceLoader"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_23

    :cond_21
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_23
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string p0, "bitmap"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final clear()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->lightningSources:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getDefaultBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->defaultBitmap$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getFrameBitmap(I)Landroid/graphics/Bitmap;
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->lightningSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    iget-object p0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->lightningSources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "{\n            lightningSources[frame]\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_4c

    :cond_16
    iget-object v0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "lightning_"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_41

    goto :goto_46

    :cond_41
    iget-object p0, p0, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->lightningSources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_46
    const-string p0, "{\n            val bitmap…         bitmap\n        }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    :goto_4c
    return-object p0
.end method
