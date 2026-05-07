.class public final synthetic Lcom/oplus/compat/content/pm/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/compat/content/pm/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/content/pm/a;->b:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/oplus/compat/content/pm/a;->a:I

    packed-switch v0, :pswitch_data_14

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/oplus/compat/content/pm/a;->b:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
