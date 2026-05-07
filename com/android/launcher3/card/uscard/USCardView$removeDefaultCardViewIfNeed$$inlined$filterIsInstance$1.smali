.class public final Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardView;->removeDefaultCardViewIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2

    instance-of p0, p1, Lcom/android/launcher3/card/DefaultCardView;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;->invoke(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
