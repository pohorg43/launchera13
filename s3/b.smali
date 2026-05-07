.class public final Ls3/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final b:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final d:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final e:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final f:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/b;->a:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/b;->b:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/b;->c:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/b;->d:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/b;->e:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/b;->f:Lv3/y;

    return-void
.end method
