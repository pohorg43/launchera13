.class public final Lkotlin/jvm/internal/TypeReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/TypeReference$Companion;,
        Lkotlin/jvm/internal/TypeReference$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/TypeReference$Companion;

.field public static final IS_MARKED_NULLABLE:I = 0x1

.field public static final IS_MUTABLE_COLLECTION_TYPE:I = 0x2

.field public static final IS_NOTHING_TYPE:I = 0x4


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/r;",
            ">;"
        }
    .end annotation
.end field

.field private final classifier:Ln3/e;

.field private final flags:I

.field private final platformTypeUpperBound:Ln3/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/jvm/internal/TypeReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/TypeReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/TypeReference;->Companion:Lkotlin/jvm/internal/TypeReference$Companion;

    return-void
.end method

.method public constructor <init>(Ln3/e;Ljava/util/List;Ln3/p;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e;",
            "Ljava/util/List<",
            "Ln3/r;",
            ">;",
            "Ln3/p;",
            "I)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/TypeReference;->classifier:Ln3/e;

    iput-object p2, p0, Lkotlin/jvm/internal/TypeReference;->arguments:Ljava/util/List;

    iput-object p3, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Ln3/p;

    iput p4, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    return-void
.end method

.method public constructor <init>(Ln3/e;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e;",
            "Ljava/util/List<",
            "Ln3/r;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lkotlin/jvm/internal/TypeReference;-><init>(Ln3/e;Ljava/util/List;Ln3/p;I)V

    return-void
.end method

.method public static final synthetic access$asString(Lkotlin/jvm/internal/TypeReference;Ln3/r;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/TypeReference;->asString(Ln3/r;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final asString(Ln3/r;)Ljava/lang/String;
    .registers 3

    iget-object p0, p1, Ln3/r;->a:Ln3/s;

    if-nez p0, :cond_7

    const-string p0, "*"

    return-object p0

    :cond_7
    iget-object p0, p1, Ln3/r;->b:Ln3/p;

    instance-of v0, p0, Lkotlin/jvm/internal/TypeReference;

    if-eqz v0, :cond_10

    check-cast p0, Lkotlin/jvm/internal/TypeReference;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_20

    :cond_1a
    iget-object p0, p1, Ln3/r;->b:Ln3/p;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_20
    iget-object p1, p1, Ln3/r;->a:Ln3/s;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_40

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    const-string p1, "out "

    invoke-static {p1, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    :cond_34
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_3a
    const-string p1, "in "

    invoke-static {p1, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_40
    :goto_40
    return-object p0
.end method

.method private final asString(Z)Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Ln3/e;

    move-result-object v0

    instance-of v1, v0, Ln3/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Ln3/c;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_13

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Ln3/c;)Ljava/lang/Class;

    move-result-object v2

    :cond_13
    if-nez v2, :cond_1e

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Ln3/e;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_1e
    iget v0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_27

    const-string p1, "kotlin.Nothing"

    goto :goto_4d

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, v2}, Lkotlin/jvm/internal/TypeReference;->getArrayClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_32
    if-eqz p1, :cond_49

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Ln3/e;

    move-result-object p1

    check-cast p1, Ln3/c;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Ln3/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_49
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_4d
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_5b

    move-object v0, v1

    goto :goto_72

    :cond_5b
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lkotlin/jvm/internal/TypeReference$asString$args$1;

    invoke-direct {v8, p0}, Lkotlin/jvm/internal/TypeReference$asString$args$1;-><init>(Lkotlin/jvm/internal/TypeReference;)V

    const/16 v9, 0x18

    const-string v3, ", "

    const-string v4, "<"

    const-string v5, ">"

    invoke-static/range {v2 .. v9}, Lz2/r;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    :goto_72
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->isMarkedNullable()Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v1, "?"

    :cond_7a
    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Ln3/p;

    instance-of v0, p0, Lkotlin/jvm/internal/TypeReference;

    if-eqz v0, :cond_d9

    check-cast p0, Lkotlin/jvm/internal/TypeReference;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_d9

    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d9

    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d9
    :goto_d9
    return-object p1
.end method

.method private final getArrayClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class p0, [Z

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "kotlin.BooleanArray"

    goto :goto_5a

    :cond_b
    const-class p0, [C

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "kotlin.CharArray"

    goto :goto_5a

    :cond_16
    const-class p0, [B

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "kotlin.ByteArray"

    goto :goto_5a

    :cond_21
    const-class p0, [S

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "kotlin.ShortArray"

    goto :goto_5a

    :cond_2c
    const-class p0, [I

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "kotlin.IntArray"

    goto :goto_5a

    :cond_37
    const-class p0, [F

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "kotlin.FloatArray"

    goto :goto_5a

    :cond_42
    const-class p0, [J

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "kotlin.LongArray"

    goto :goto_5a

    :cond_4d
    const-class p0, [D

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const-string p0, "kotlin.DoubleArray"

    goto :goto_5a

    :cond_58
    const-string p0, "kotlin.Array"

    :goto_5a
    return-object p0
.end method

.method public static synthetic getFlags$kotlin_stdlib$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPlatformTypeUpperBound$kotlin_stdlib$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lkotlin/jvm/internal/TypeReference;

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Ln3/e;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/TypeReference;

    invoke-virtual {p1}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Ln3/e;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Ln3/p;

    iget-object v1, p1, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Ln3/p;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget p0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    iget p1, p1, Lkotlin/jvm/internal/TypeReference;->flags:I

    if-ne p0, p1, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/u;->a:Lz2/u;

    return-object p0
.end method

.method public getArguments()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/r;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkotlin/jvm/internal/TypeReference;->arguments:Ljava/util/List;

    return-object p0
.end method

.method public getClassifier()Ln3/e;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/TypeReference;->classifier:Ln3/e;

    return-object p0
.end method

.method public final getFlags$kotlin_stdlib()I
    .registers 1

    iget p0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    return p0
.end method

.method public final getPlatformTypeUpperBound$kotlin_stdlib()Ln3/p;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Ln3/p;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Ln3/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isMarkedNullable()Z
    .registers 2

    iget p0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, " (Kotlin reflection is not available)"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
