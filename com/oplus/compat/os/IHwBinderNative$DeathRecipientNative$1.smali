.class Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;
.super Lcom/oplus/inner/os/IHwBinderWrapper$DeathRecipientWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;->this$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-direct {p0}, Lcom/oplus/inner/os/IHwBinderWrapper$DeathRecipientWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;->this$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->serviceDied(J)V

    return-void
.end method
