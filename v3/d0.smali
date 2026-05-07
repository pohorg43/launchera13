.class public final Lv3/d0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb3/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;

.field public final c:[Lq3/a2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lb3/f;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/d0;->a:Lb3/f;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lv3/d0;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lq3/a2;

    iput-object p1, p0, Lv3/d0;->c:[Lq3/a2;

    return-void
.end method
