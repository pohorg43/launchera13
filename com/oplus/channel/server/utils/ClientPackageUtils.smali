.class public final Lcom/oplus/channel/server/utils/ClientPackageUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLIENT_SDK_VERSION:Ljava/lang/String; = "cardwidget.support.client.version.code"

.field public static final INSTANCE:Lcom/oplus/channel/server/utils/ClientPackageUtils;

.field public static final TAG:Ljava/lang/String; = "ClientPackageUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/ClientPackageUtils;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/ClientPackageUtils;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/ClientPackageUtils;->INSTANCE:Lcom/oplus/channel/server/utils/ClientPackageUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClientSdkVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packageName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "0"

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string p2, "packageManager.getApplic…ageManager.GET_META_DATA)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p2, "cardwidget.support.client.version.code"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_2f
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_46

    sget-object p2, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getClientSdkVersionCode error : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientPackageUtils"

    invoke-virtual {p2, v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-object p0
.end method

.method public final getClientVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packageName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "0"

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_23
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3a

    sget-object p2, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getClientVersionCode error : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientPackageUtils"

    invoke-virtual {p2, v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-object p0
.end method
