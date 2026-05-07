.class public Lcom/oplus/quickstep/utils/SingletonHolderWithParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private creator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;"
        }
    .end annotation
.end field

.field private volatile instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;)V"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->creator:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_b

    goto :goto_19

    :cond_b
    iget-object v0, p0, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->creator:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->instance:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->creator:Lkotlin/jvm/functions/Function1;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1b

    :goto_19
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
