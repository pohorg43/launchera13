.class Lcom/oplus/compat/os/IHwBinderNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/os/IHwBinderNative;->linkToDeath(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compat/os/IHwBinderNative;

.field public final synthetic val$deathRecipientNative:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/os/IHwBinderNative;Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/compat/os/IHwBinderNative$1;->this$0:Lcom/oplus/compat/os/IHwBinderNative;

    iput-object p2, p0, Lcom/oplus/compat/os/IHwBinderNative$1;->val$deathRecipientNative:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/compat/os/IHwBinderNative$1;->val$deathRecipientNative:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->serviceDied(J)V

    return-void
.end method
