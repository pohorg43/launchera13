.class final Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet$1;-><init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    iget p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;->size:I

    return p0
.end method
