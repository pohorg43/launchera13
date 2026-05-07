.class public final synthetic Lcom/oplus/compat/content/pm/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/compat/content/pm/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/content/pm/b;->b:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/oplus/compat/content/pm/b;->a:I

    packed-switch v0, :pswitch_data_14

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/oplus/compat/content/pm/b;->b:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
