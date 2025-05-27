## Features

- **Multi-threaded Architecture**: Utilizes POSIX threads for parallel operations  
- **Mutex-based Resource Management**: Prevents race conditions in critical sections  
- **Socket-based Client-Server Model**: Supports multiple concurrent client connections  
- **Real-time Book Management**: Track book availability and lending status  
- **User Authentication**: Secure login system for both librarians and clients  
- **Data Persistence**: Maintains state across sessions using binary data files  

---

## System Requirements

- POSIX-compliant operating system (Linux/Unix)  
- GCC compiler  
- pthread library  
- Network socket support  

---

## Usage

### Starting the Server

```bash
./server
```

### Connecting as a Client

```bash
./client
```

---

## Features

### Librarian Operations

- Create librarian accounts  
- Add new books to the library  
- Monitor book inventory  
- View all client transactions  
- Real-time system status monitoring  

### Client Operations

- Create user accounts  
- Borrow books (up to 15 books per user)  
- Return books  
- View borrowed books  
- Browse available books  

---

## Technical Details

### Threading Model

- Dedicated threads for client connections  
- Mutex locks for shared resource access:  
  - `library_mutex`: Book inventory operations  
  - `librarian_mutex`: Librarian account management  
  - `client_mutex`: Client operations  

### Data Structures

- `book`: Basic book information  
- `library_book`: Extended book info with copy tracking  
- `client`: User account and borrowed books  
- `librarian`: Staff account management  

### Network Protocol

- TCP/IP-based client-server communication  
- Custom message protocol for operations  
- Connection pooling for multiple clients  

---

## Security Features

- Password-protected accounts  
- Session management  
- Concurrent access control  
- Data integrity protection  

---

## File Structure

```text
.
├── lib/
│   ├── book.h
│   ├── client.h
│   ├── include.h
│   └── server.h
├── src/
│   ├── client.c
│   └── server.c
├── data/
│   ├── books.dat
│   ├── clients.dat
│   └── librarians.dat
└── Makefile
```
