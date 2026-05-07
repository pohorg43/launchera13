.class final Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;,
        Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$EntrySet;,
        Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;,
        Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;,
        Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field public final header:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field public modCount:I

.field public size:I

.field public table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public threshold:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    new-instance v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    iput v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_d
    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    new-instance p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    invoke-direct {p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->header:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method private doubleCapacity()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->doubleCapacity([Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method public static doubleCapacity([Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)[",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    new-instance v2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;-><init>()V

    new-instance v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v3}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    new-instance v4, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v4}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v0, :cond_67

    aget-object v7, p0, v6

    if-nez v7, :cond_1d

    goto :goto_64

    :cond_1d
    invoke-virtual {v2, v7}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    move v8, v5

    move v9, v8

    :goto_22
    invoke-virtual {v2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v10

    if-eqz v10, :cond_33

    iget v10, v10, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v0

    if-nez v10, :cond_30

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_33
    invoke-virtual {v3, v8}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    invoke-virtual {v4, v9}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    invoke-virtual {v2, v7}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    :goto_3c
    invoke-virtual {v2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v7

    if-eqz v7, :cond_4f

    iget v10, v7, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v0

    if-nez v10, :cond_4b

    invoke-virtual {v3, v7}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_3c

    :cond_4b
    invoke-virtual {v4, v7}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_3c

    :cond_4f
    const/4 v7, 0x0

    if-lez v8, :cond_57

    invoke-virtual {v3}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v8

    goto :goto_58

    :cond_57
    move-object v8, v7

    :goto_58
    aput-object v8, v1, v6

    add-int v8, v6, v0

    if-lez v9, :cond_62

    invoke-virtual {v4}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v7

    :cond_62
    aput-object v7, v1, v8

    :goto_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_67
    return-object v1
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private rebalance(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_79

    iget-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget v3, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    if-eqz v1, :cond_12

    iget v4, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3c

    iget-object v0, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_21

    iget v3, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    move v3, v2

    :goto_22
    if-eqz v0, :cond_26

    iget v2, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :cond_26
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_36

    if-nez v2, :cond_2f

    if-nez p2, :cond_2f

    goto :goto_36

    :cond_2f
    invoke-direct {p0, v1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    invoke-direct {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_39

    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    :goto_39
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_3c
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_63

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_49

    iget v3, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_4a

    :cond_49
    move v3, v2

    :goto_4a
    if-eqz v1, :cond_4e

    iget v2, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :cond_4e
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_5d

    if-nez v2, :cond_56

    if-nez p2, :cond_56

    goto :goto_5d

    :cond_56
    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    invoke-direct {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_60

    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    :goto_60
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_63
    if-nez v5, :cond_6c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    if-eqz p2, :cond_76

    goto :goto_79

    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    if-nez p2, :cond_76

    goto :goto_79

    :cond_76
    iget-object p1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_79
    :goto_79
    return-void
.end method

.method private replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_15

    iget-object p0, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-ne p0, p1, :cond_12

    iput-object p2, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_1f

    :cond_12
    iput-object p2, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_1f

    :cond_15
    iget p1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    aput-object p2, p0, p1

    :goto_1f
    return-void
.end method

.method private rotateLeft(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v2, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v2, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v2, :cond_e

    iput-object p1, v2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    iput-object p1, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/4 p0, 0x0

    if-eqz v0, :cond_1b

    iget v0, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    move v0, p0

    :goto_1c
    if-eqz v2, :cond_21

    iget v2, v2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    move v2, p0

    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    if-eqz v3, :cond_2e

    iget p0, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :cond_2e
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    return-void
.end method

.method private rotateRight(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v2, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v3, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_e

    iput-object p1, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    iput-object p1, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/4 p0, 0x0

    if-eqz v1, :cond_1b

    iget v1, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    move v1, p0

    :goto_1c
    if-eqz v3, :cond_21

    iget v3, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    move v3, p0

    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    if-eqz v2, :cond_2e

    iget p0, v2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    :cond_2e
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    return-void
.end method

.method private static secondaryHash(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    iget v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->header:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :goto_13
    if-eq v0, p0, :cond_1d

    iget-object v2, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-object v0, v2

    goto :goto_13

    :cond_1d
    iput-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$EntrySet;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$EntrySet;-><init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$EntrySet;

    :goto_c
    return-object v0
.end method

.method public find(Ljava/lang/Object;Z)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->table:[Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v6

    array-length v2, v1

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    and-int/2addr v2, v6

    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_3c

    sget-object v5, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v5, :cond_1d

    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    goto :goto_1e

    :cond_1d
    move-object v5, v4

    :goto_1e
    if-eqz v5, :cond_27

    iget-object v7, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    goto :goto_2d

    :cond_27
    iget-object v7, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    :goto_2d
    if-nez v7, :cond_30

    return-object v3

    :cond_30
    if-gez v7, :cond_35

    iget-object v8, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_37

    :cond_35
    iget-object v8, v3, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :goto_37
    if-nez v8, :cond_3a

    goto :goto_3d

    :cond_3a
    move-object v3, v8

    goto :goto_1e

    :cond_3c
    const/4 v7, 0x0

    :goto_3d
    move-object v10, v3

    move v11, v7

    if-nez p2, :cond_42

    return-object v4

    :cond_42
    iget-object v7, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->header:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-nez v10, :cond_7b

    sget-object p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, p2, :cond_6e

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_4f

    goto :goto_6e

    :cond_4f
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    :goto_6e
    new-instance p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v8, v7, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    aput-object p2, v1, v2

    goto :goto_8f

    :cond_7b
    new-instance p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v8, v7, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    if-gez v11, :cond_8a

    iput-object p2, v10, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_8c

    :cond_8a
    iput-object p2, v10, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :goto_8c
    invoke-direct {p0, v10, v9}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rebalance(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Z)V

    :goto_8f
    iget p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    iget v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->threshold:I

    if-le p1, v0, :cond_9c

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->doubleCapacity()V

    :cond_9c
    iget p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    return-object p2
.end method

.method public findByEntry(Ljava/util/Map$Entry;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method public findByObject(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    nop

    :catch_9
    :cond_9
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;-><init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;

    :goto_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    iget-object p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public removeInternal(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    iget-object p2, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object p2, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :cond_11
    iget-object p2, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v2, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v3, 0x0

    if-eqz p2, :cond_54

    if-eqz v1, :cond_54

    iget v2, p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    iget v4, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    if-le v2, v4, :cond_27

    invoke-virtual {p2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->last()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p2

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->first()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p2

    :goto_2b
    invoke-virtual {p0, p2, v3}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Z)V

    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_3b

    iget v2, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    iput-object v1, p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object p2, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    iget-object v1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_48

    iget v3, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    iput-object v1, p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object p2, v1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    :cond_48
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->height:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    return-void

    :cond_54
    if-eqz p2, :cond_5c

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_67

    :cond_5c
    if-eqz v1, :cond_64

    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    iput-object v0, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_67

    :cond_64
    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;)V

    :goto_67
    invoke-direct {p0, v2, v3}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->rebalance(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Z)V

    iget p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    iget p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->modCount:I

    return-void
.end method

.method public removeInternalByKey(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;Z)V

    :cond_a
    return-object p1
.end method

.method public size()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    return p0
.end method
