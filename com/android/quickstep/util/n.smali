.class public final synthetic Lcom/android/quickstep/util/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntConsumer;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/n;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/util/n;

    invoke-direct {v0}, Lcom/android/quickstep/util/n;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/n;->a:Lcom/android/quickstep/util/n;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/util/TaskViewSimulator;->b(I)V

    return-void
.end method
