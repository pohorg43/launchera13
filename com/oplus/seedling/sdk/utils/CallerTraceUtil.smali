.class public final Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;

.field private static final NUM_5:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CallerTraceUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->INSTANCE:Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getCaller(Ljava/lang/String;[Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    const-string v0, "\n"

    invoke-static {p0, v0}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    :try_start_b
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    if-lez p2, :cond_22

    :goto_13
    add-int/lit8 v2, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v2, p2, :cond_20

    goto :goto_22

    :cond_20
    move v1, v2

    goto :goto_13

    :cond_22
    :goto_22
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    goto :goto_2a

    :catchall_25
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_2a
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_47

    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCaller error:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallerTraceUtil"

    invoke-static {p2, p1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCaller(Ljava/lang/String;[Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
