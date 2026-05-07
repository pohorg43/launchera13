.class Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet$1;
.super Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet$1;->this$1:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;

    iget-object p1, p1, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->nextNode()Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object p0
.end method
