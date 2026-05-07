.class public final Lpantanal/foundation/userunlock/UserUnlockManager$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/foundation/userunlock/UserUnlockManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lpantanal/foundation/userunlock/UserUnlockManager$a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lpantanal/foundation/userunlock/UserUnlockManager$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/foundation/userunlock/UserUnlockManager$b;

    invoke-direct {v0}, Lpantanal/foundation/userunlock/UserUnlockManager$b;-><init>()V

    sput-object v0, Lpantanal/foundation/userunlock/UserUnlockManager$b;->a:Lpantanal/foundation/userunlock/UserUnlockManager$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
