.class Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$LazyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;-><init>(Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$1;)V

    sput-object v0, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$LazyHolder;->INSTANCE:Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$LazyHolder;->INSTANCE:Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;

    return-object v0
.end method
