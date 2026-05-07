.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupInfo"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

.field public e:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->c:I

    iput v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;-><init>()V

    return-void
.end method
