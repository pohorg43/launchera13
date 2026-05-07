.class public final Le4/a;
.super Le4/b;
.source ""


# static fields
.field public static final a:Le4/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Le4/a;

    invoke-direct {v0}, Le4/a;-><init>()V

    sput-object v0, Le4/a;->a:Le4/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Le4/b;-><init>()V

    return-void
.end method

.method public static e(Le4/a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;I)V
    .registers 5

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    :cond_5
    const-string p4, "tag"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "logGenerator"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2}, Le4/b;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
