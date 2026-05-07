.class public final Lcom/oplus/quickstep/common/AbstractObserver$register$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $handler:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/oplus/quickstep/common/AbstractObserver;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/common/AbstractObserver;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/common/AbstractObserver;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/common/AbstractObserver$register$1;->this$0:Lcom/oplus/quickstep/common/AbstractObserver;

    iput-object p2, p0, Lcom/oplus/quickstep/common/AbstractObserver$register$1;->$handler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/AbstractObserver$register$1;->this$0:Lcom/oplus/quickstep/common/AbstractObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange(Z)V

    return-void
.end method
