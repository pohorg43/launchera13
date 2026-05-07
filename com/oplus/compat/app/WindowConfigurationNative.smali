.class public Lcom/oplus/compat/app/WindowConfigurationNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/WindowConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.WindowConfiguration"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final STATUS_ERROR:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "WindowConfigurationNative"

.field public static final WINDOWING_MODE_FULLSCREEN:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final WINDOWING_MODE_FULLSCREEN_NAME:Ljava/lang/String; = "WINDOWING_MODE_FULLSCREEN"

.field public static final WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final WINDOWING_MODE_SPLIT_SCREEN_PRIMARY_NAME:Ljava/lang/String; = "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"

.field public static final WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final WINDOWING_MODE_SPLIT_SCREEN_SECONDARY_NAME:Ljava/lang/String; = "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "WINDOWING_MODE_FULLSCREEN"

    invoke-static {v0}, Lcom/oplus/compat/app/WindowConfigurationNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/WindowConfigurationNative;->WINDOWING_MODE_FULLSCREEN:I

    const-string v0, "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"

    invoke-static {v0}, Lcom/oplus/compat/app/WindowConfigurationNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/WindowConfigurationNative;->WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I

    const-string v0, "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"

    invoke-static {v0}, Lcom/oplus/compat/app/WindowConfigurationNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/WindowConfigurationNative;->WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init(Ljava/lang/String;)I
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    const-string v0, "WindowConfigurationNative"

    :try_start_2
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_c9

    const/4 v2, 0x0

    const-string v3, "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"

    const-string v4, "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"

    const-string v5, "WINDOWING_MODE_FULLSCREEN"

    const v6, 0x7c1b39e3

    const v7, 0x1f472515

    const v8, -0x1a905096

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v1, :cond_4b

    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v8, :cond_35

    if-eq v1, v7, :cond_2e

    if-eq v1, v6, :cond_26

    goto :goto_3d

    :cond_26
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    move v2, v10

    goto :goto_3e

    :cond_2e
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_35
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    move v2, v11

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v2, v9

    :goto_3e
    if-eqz v2, :cond_49

    if-eq v2, v11, :cond_48

    if-eq v2, v10, :cond_46

    goto/16 :goto_d1

    :cond_46
    const/4 p0, 0x3

    return p0

    :cond_48
    return v11

    :cond_49
    const/4 p0, 0x4

    return p0

    :cond_4b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_7d

    new-instance v1, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v1}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v2, "android.app.WindowConfiguration"

    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "result"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v8, :cond_9d

    if-eq v1, v7, :cond_96

    if-eq v1, v6, :cond_8e

    goto :goto_a5

    :cond_8e
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    move v2, v10

    goto :goto_a6

    :cond_96
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    goto :goto_a6

    :cond_9d
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    move v2, v11

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v2, v9

    :goto_a6
    const/4 p0, 0x0

    if-eqz v2, :cond_bc

    if-eq v2, v11, :cond_b5

    if-eq v2, v10, :cond_ae

    goto :goto_d1

    :cond_ae
    sget-object v1, Lcom/oplus/compat/app/WindowConfigurationNative$ReflectInfo;->WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:Lcom/oplus/utils/reflect/RefInt;

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_b5
    sget-object v1, Lcom/oplus/compat/app/WindowConfigurationNative$ReflectInfo;->WINDOWING_MODE_FULLSCREEN:Lcom/oplus/utils/reflect/RefInt;

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_bc
    sget-object v1, Lcom/oplus/compat/app/WindowConfigurationNative$ReflectInfo;->WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:Lcom/oplus/utils/reflect/RefInt;

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_c3
    const-string p0, "not supported before R"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_1b .. :try_end_c8} :catchall_c9

    goto :goto_d1

    :catchall_c9
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    :goto_d1
    const/high16 p0, -0x80000000

    return p0
.end method
