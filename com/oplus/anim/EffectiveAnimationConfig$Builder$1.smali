.class Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->setNetworkCacheDir(Ljava/io/File;)Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationConfig$Builder;

.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationConfig$Builder;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;->this$0:Lcom/oplus/anim/EffectiveAnimationConfig$Builder;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;->val$file:Ljava/io/File;

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache file must be a directory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
