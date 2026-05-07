.class public final Lcom/oplus/card/util/CardScope;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/f0;


# static fields
.field public static final INSTANCE:Lcom/oplus/card/util/CardScope;

.field private static final TAG:Ljava/lang/String; = "CardScope"

.field private static final coroutineContext:Lb3/f;

.field private static final handler:Lq3/c0;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/card/util/CardScope;

    invoke-direct {v0}, Lcom/oplus/card/util/CardScope;-><init>()V

    sput-object v0, Lcom/oplus/card/util/CardScope;->INSTANCE:Lcom/oplus/card/util/CardScope;

    sget v0, Lq3/c0;->B:I

    sget-object v0, Lq3/c0$a;->a:Lq3/c0$a;

    new-instance v1, Lcom/oplus/card/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0}, Lcom/oplus/card/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lq3/c0$a;)V

    sput-object v1, Lcom/oplus/card/util/CardScope;->handler:Lq3/c0;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Li1/j;->a(Lq3/i1;I)Lq3/s;

    move-result-object v0

    sget-object v2, Lq3/q0;->a:Lq3/b0;

    sget-object v2, Lv3/q;->a:Lq3/r1;

    check-cast v0, Lq3/n1;

    invoke-static {v0, v2}, Lb3/f$a$a;->d(Lb3/f$a;Lb3/f;)Lb3/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/util/CardScope;->coroutineContext:Lb3/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lb3/f;
    .registers 1

    sget-object p0, Lcom/oplus/card/util/CardScope;->coroutineContext:Lb3/f;

    return-object p0
.end method
