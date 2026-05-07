.class public abstract Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/IHwBinderNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeathRecipientNative"
.end annotation


# instance fields
.field private final mDeathRecipientWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->mDeathRecipientWrapper:Ljava/lang/Object;

    goto :goto_2a

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;

    invoke-direct {v0, p0}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;-><init>(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V

    iput-object v0, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->mDeathRecipientWrapper:Ljava/lang/Object;

    goto :goto_2a

    :cond_1f
    new-instance v0, Lcom/android/quickstep/fallback/a;

    invoke-direct {v0, p0}, Lcom/android/quickstep/fallback/a;-><init>(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V

    invoke-static {v0}, Lcom/oplus/compat/os/IHwBinderNative;->access$100(Ljava/util/function/Consumer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->mDeathRecipientWrapper:Ljava/lang/Object;

    :goto_2a
    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->mDeathRecipientWrapper:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public abstract serviceDied(J)V
.end method
