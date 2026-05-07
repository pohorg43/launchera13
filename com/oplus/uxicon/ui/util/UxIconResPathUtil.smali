.class public Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BASE_PRODUCT_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final MY_CARRIER_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final MY_CARRIER_FILE_PATH:Ljava/lang/String; = "/my_carrier/media/theme/uxicons/"

.field public static final MY_CARRIER_ROOT_PATH:Ljava/lang/String; = "/my_carrier"

.field public static final MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

.field public static final MY_COUNTRY_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final MY_COUNTRY_ROOT_PATH:Ljava/lang/String; = "/my_country"

.field public static final MY_ICON_THEME_FILE_PATH:Ljava/lang/String;

.field public static final MY_PRODUCT_ROOT_PATH:Ljava/lang/String; = "/my_product"

.field public static final MY_REGION_FILE_PATH:Ljava/lang/String; = "/my_region/media/theme/uxicons/"

.field public static final MY_STOCK_FILE_PATH:Ljava/lang/String; = "/my_stock/media/theme/uxicons/"

.field public static final UX_DOWNLOAD_FILE_PATH:Ljava/lang/String; = "/data/oplus/uxicons/"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getMyProductDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/media/theme/default/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->BASE_PRODUCT_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getMyCountryDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/media/theme/uxicons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COUNTRY_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getMyCarrierDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_CARRIER_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/my_stock/media/theme/uxicons/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_53

    :cond_51
    const-string v1, "/my_region/media/theme/uxicons/"

    :goto_53
    sput-object v1, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_ICON_THEME_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_63

    :cond_61
    const-string v1, "/my_carrier/media/theme/uxicons/"

    :goto_63
    sput-object v1, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityName(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1e0

    if-le p0, v0, :cond_7

    const-string p0, "xxxhdpi"

    goto :goto_10

    :cond_7
    const/16 v0, 0x140

    if-le p0, v0, :cond_e

    const-string p0, "xxhdpi"

    goto :goto_10

    :cond_e
    const-string p0, "xhdpi"

    :goto_10
    return-object p0
.end method

.method public static getMyCarrierDirectory()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyCarrierDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const-string v1, "getMyCarrierDirectory error"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IconResPathUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2b
    const-string v0, "/my_carrier"

    return-object v0
.end method

.method public static getMyCountryDirectory()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyCountryDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const-string v1, "getMyCountryDirectory error"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IconResPathUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2b
    const-string v0, "/my_country"

    return-object v0
.end method

.method public static getMyProductDirectory()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyProductDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const-string v1, "getMyProductDirectory error"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IconResPathUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2b
    const-string v0, "/my_product"

    return-object v0
.end method
