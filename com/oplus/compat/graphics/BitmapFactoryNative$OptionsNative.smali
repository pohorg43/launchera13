.class public Lcom/oplus/compat/graphics/BitmapFactoryNative$OptionsNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/graphics/BitmapFactoryNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsNative"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/graphics/BitmapFactoryNative$OptionsNative$OplusMirrorRefInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInPostProc(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/oplus/compat/graphics/BitmapFactoryNative$OptionsNative$OplusMirrorRefInfo;->access$000()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/oplus/inner/graphics/BitmapFactoryWrapper$OptionsWrapper;->getInPostProc(Landroid/graphics/BitmapFactory$Options;)Z

    move-result p0

    return p0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0}, Lcom/oplus/compat/graphics/BitmapFactoryNative;->access$100(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_37
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in T due to google not supported"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setInPostProc(Landroid/graphics/BitmapFactory$Options;Z)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/oplus/compat/graphics/BitmapFactoryNative$OptionsNative$OplusMirrorRefInfo;->access$000()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_27

    :cond_14
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Lcom/oplus/inner/graphics/BitmapFactoryWrapper$OptionsWrapper;->setInPostProc(Landroid/graphics/BitmapFactory$Options;Z)V

    goto :goto_27

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0, p1}, Lcom/oplus/compat/graphics/BitmapFactoryNative;->access$200(Landroid/graphics/BitmapFactory$Options;Z)V

    :goto_27
    return-void

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in T due to google not supported"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
