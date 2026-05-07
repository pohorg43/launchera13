.class public final synthetic Lcom/android/quickstep/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/r;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/r;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/quickstep/r;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/r;->b:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/FallbackActivityInterface;->a(Ljava/util/function/Predicate;Lcom/android/quickstep/RecentsActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0

    :goto_11
    iget-object p0, p0, Lcom/android/quickstep/r;->b:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/Launcher;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->b(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z

    move-result p0

    return p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
