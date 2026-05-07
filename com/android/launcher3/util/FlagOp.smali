.class public interface abstract Lcom/android/launcher3/util/FlagOp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_OP:Lcom/android/launcher3/util/FlagOp;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/util/b;->a:Lcom/android/launcher3/util/b;

    sput-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/FlagOp;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/FlagOp;->lambda$addFlag$1(II)I

    move-result p0

    return p0
.end method

.method public static synthetic b(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/util/FlagOp;->lambda$static$0(I)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/util/FlagOp;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/FlagOp;->lambda$removeFlag$2(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$addFlag$1(II)I
    .registers 3

    invoke-interface {p0, p2}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$removeFlag$2(II)I
    .registers 3

    invoke-interface {p0, p2}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p0

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$static$0(I)I
    .registers 1

    return p0
.end method


# virtual methods
.method public addFlag(I)Lcom/android/launcher3/util/FlagOp;
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/util/a;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    return-object v0
.end method

.method public abstract apply(I)I
.end method

.method public removeFlag(I)Lcom/android/launcher3/util/FlagOp;
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/util/a;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    return-object v0
.end method

.method public setFlag(IZ)Lcom/android/launcher3/util/FlagOp;
    .registers 3

    if-eqz p2, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object p0

    :goto_b
    return-object p0
.end method
