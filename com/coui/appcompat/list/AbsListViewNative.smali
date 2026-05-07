.class public Lcom/coui/appcompat/list/AbsListViewNative;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/AbsListView;I)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "com.oplus.inner.widget.AbsListViewWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move v2, v0

    goto :goto_a

    :catch_9
    move v2, v1

    :goto_a
    if-eqz v2, :cond_f

    const-string v2, "com.oplus.inner.widget.AbsListViewWrapper"

    goto :goto_2f

    :cond_f
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/coui/appcompat/version/COUICompatUtil;->f:[I

    array-length v2, v2

    new-array v3, v2, [C

    move v4, v1

    :goto_1c
    if-ge v4, v2, :cond_2b

    sget-object v5, Lcom/coui/appcompat/version/COUICompatUtil;->f:[I

    aget v5, v5, v4

    sget-object v6, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v5, v6, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2b
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    :try_start_2f
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setTouchMode"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/widget/AbsListView;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_53} :catch_54

    goto :goto_5e

    :catch_54
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbsListViewNative"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void
.end method
