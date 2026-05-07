.class public Lcom/oplus/compat/graphics/BitmapFactoryNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/graphics/BitmapFactoryNative$OptionsNative;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/graphics/BitmapFactoryNative;->getInPostProcCompat(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/graphics/BitmapFactory$Options;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/compat/graphics/BitmapFactoryNative;->setInPostProcCompat(Landroid/graphics/BitmapFactory$Options;Z)V

    return-void
.end method

.method private static getInPostProcCompat(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static setInPostProcCompat(Landroid/graphics/BitmapFactory$Options;Z)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
