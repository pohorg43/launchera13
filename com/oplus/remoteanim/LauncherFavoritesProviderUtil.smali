.class public final Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ARG_ESTABLISH_CONNECTION:Ljava/lang/String; = "establish_remote_animation_connection"

.field public static final EXTRA_CALL_PACKAGE:Ljava/lang/String; = "extra_call_package"

.field public static final EXTRA_REMOTE_ANIMATION:Ljava/lang/String; = "extra_remote_animation"

.field public static final INSTANCE:Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;

.field private static final LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

.field public static final METHOD_ESTABLISH_CONNECTION:Ljava/lang/String; = "establish_remote_animation_connection"

.field private static final TAG:Ljava/lang/String; = "LauncherFavoritesProviderUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;

    invoke-direct {v0}, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;->INSTANCE:Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;

    const-string v0, "content://com.android.launcher.OplusFavoritesProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(\"content://com.and….OplusFavoritesProvider\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final callProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "LauncherFavoritesProviderUtil"

    if-nez p0, :cond_1a

    const-string p0, "callProvider, context is null so return"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callProvider, methodName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", arg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_3d

    goto :goto_6a

    :cond_3d
    sget-object v2, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_46

    goto :goto_6a

    :cond_46
    :try_start_46
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4d

    goto :goto_52

    :catchall_4d
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_52
    const-string p2, "callProvider, close connection"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_61

    goto :goto_6a

    :cond_61
    const-string p1, "callProvider, exception = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    return-object v0
.end method

.method public static final establishRemoteAnimationConnection(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "establishRemoteAnimationConnection, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",arg:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherFavoritesProviderUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p2, :cond_27

    const-string p2, "establishRemoteAnimationConnection, extras is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_27
    const-string v0, "extra_call_package"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v1, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    :goto_3b
    if-eqz v1, :cond_43

    const-string p2, "establishRemoteAnimationConnection: fromPackage is null or empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_43
    const-string v1, "extra_remote_animation"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;

    move-result-object p2

    const-string v2, "fromPackage"

    if-nez p2, :cond_53

    move-object v3, p0

    goto :goto_5c

    :cond_53
    sget-object v3, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->addProxy(Ljava/lang/String;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    move-object v3, p2

    :goto_5c
    if-nez v3, :cond_6b

    const-string v3, "establishRemoteAnimationConnection: remoteAnimationProxy is null, so we clear old proxy if possible"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->clearProxy(Ljava/lang/String;)V

    :cond_6b
    if-nez p2, :cond_6e

    return-object p0

    :cond_6e
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;->getLauncherRemoteProxy()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method
