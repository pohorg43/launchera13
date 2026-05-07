.class public final Lpantanal/foundation/userunlock/UserUnlockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/foundation/userunlock/UserUnlockManager$a;
    }
.end annotation


# static fields
.field public static final a:Lpantanal/foundation/userunlock/UserUnlockManager;

.field public static final b:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/foundation/userunlock/UserUnlockManager;

    invoke-direct {v0}, Lpantanal/foundation/userunlock/UserUnlockManager;-><init>()V

    sput-object v0, Lpantanal/foundation/userunlock/UserUnlockManager;->a:Lpantanal/foundation/userunlock/UserUnlockManager;

    sget-object v0, Lpantanal/foundation/userunlock/UserUnlockManager$b;->a:Lpantanal/foundation/userunlock/UserUnlockManager$b;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lpantanal/foundation/userunlock/UserUnlockManager;->b:Ly2/e;

    new-instance v0, Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1;

    invoke-direct {v0}, Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
