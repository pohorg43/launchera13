.class Lcom/android/launcher3/util/IntArray$ValueIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/IntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mNextIndex:I

.field public final synthetic this$0:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/IntArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    iget-object p0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public next()Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray$ValueIterator;->next()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    return-void
.end method
