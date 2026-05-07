.class public Lcom/coui/appcompat/version/COUIVersionUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 8

    const-string v0, "com.oplus.os.OplusBuild"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move v3, v1

    goto :goto_a

    :catch_9
    move v3, v2

    :goto_a
    if-eqz v3, :cond_f

    const-string v3, "com.oplus.os.OplusBuild"

    goto :goto_2f

    :cond_f
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/coui/appcompat/version/COUICompatUtil;->c:[I

    array-length v3, v3

    new-array v4, v3, [C

    move v5, v2

    :goto_1c
    if-ge v5, v3, :cond_2b

    sget-object v6, Lcom/coui/appcompat/version/COUICompatUtil;->c:[I

    aget v6, v6, v5

    sget-object v7, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v6, v7, v6

    aput-char v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_2b
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    :goto_2f
    sput-object v3, Lcom/coui/appcompat/version/COUIVersionUtil;->a:Ljava/lang/String;

    :try_start_31
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move v1, v2

    :goto_36
    if-eqz v1, :cond_3b

    const-string v0, "getOplusOSVERSION"

    goto :goto_5b

    :cond_3b
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coui/appcompat/version/COUICompatUtil;->d:[I

    array-length v0, v0

    new-array v1, v0, [C

    move v3, v2

    :goto_48
    if-ge v3, v0, :cond_57

    sget-object v4, Lcom/coui/appcompat/version/COUICompatUtil;->d:[I

    aget v4, v4, v3

    sget-object v5, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v4, v5, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_57
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    sput-object v0, Lcom/coui/appcompat/version/COUIVersionUtil;->b:Ljava/lang/String;

    :try_start_5d
    sget-object v0, Lcom/coui/appcompat/version/COUIVersionUtil;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/version/COUIVersionUtil;->b:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_77} :catch_78

    goto :goto_84

    :catch_78
    move-exception v0

    const-string v1, "getOSVersionCode failed. error = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "COUIVersionUtil"

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_84
    return v2
.end method
